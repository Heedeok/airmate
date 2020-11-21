.class public Lorg/ros/android/view/visualization/shape/TextShape;
.super Lorg/ros/android/view/visualization/shape/BaseShape;
.source "TextShape.java"


# instance fields
.field private final glText:Luk/co/blogspot/fractiousg/texample/GLText;

.field private lines:Ljava/nio/FloatBuffer;

.field private final text:Ljava/lang/String;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Luk/co/blogspot/fractiousg/texample/GLText;Ljava/lang/String;)V
    .registers 4
    .param p1, "glText"    # Luk/co/blogspot/fractiousg/texample/GLText;
    .param p2, "text"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Lorg/ros/android/view/visualization/shape/BaseShape;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/ros/android/view/visualization/shape/TextShape;->glText:Luk/co/blogspot/fractiousg/texample/GLText;

    .line 23
    iput-object p2, p0, Lorg/ros/android/view/visualization/shape/TextShape;->text:Ljava/lang/String;

    .line 24
    const/16 v0, 0xc

    invoke-static {v0}, Lorg/ros/android/view/visualization/Vertices;->allocateBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    .line 25
    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3

    .line 12
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/shape/BaseShape;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method protected drawShape(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 9
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 58
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lorg/ros/android/view/visualization/shape/TextShape;->getColor()Lorg/ros/android/view/visualization/Color;

    move-result-object v1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-static {p2, v0, v1, v2}, Lorg/ros/android/view/visualization/Vertices;->drawLines(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;F)V

    .line 59
    const/16 v0, 0xde1

    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 60
    iget-object v1, p0, Lorg/ros/android/view/visualization/shape/TextShape;->glText:Luk/co/blogspot/fractiousg/texample/GLText;

    invoke-virtual {p0}, Lorg/ros/android/view/visualization/shape/TextShape;->getColor()Lorg/ros/android/view/visualization/Color;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/android/view/visualization/Color;->getRed()F

    move-result v2

    invoke-virtual {p0}, Lorg/ros/android/view/visualization/shape/TextShape;->getColor()Lorg/ros/android/view/visualization/Color;

    move-result-object v3

    invoke-virtual {v3}, Lorg/ros/android/view/visualization/Color;->getGreen()F

    move-result v3

    invoke-virtual {p0}, Lorg/ros/android/view/visualization/shape/TextShape;->getColor()Lorg/ros/android/view/visualization/Color;

    move-result-object v4

    invoke-virtual {v4}, Lorg/ros/android/view/visualization/Color;->getBlue()F

    move-result v4

    invoke-virtual {p0}, Lorg/ros/android/view/visualization/shape/TextShape;->getColor()Lorg/ros/android/view/visualization/Color;

    move-result-object v5

    .line 61
    invoke-virtual {v5}, Lorg/ros/android/view/visualization/Color;->getAlpha()F

    move-result v5

    .line 60
    invoke-virtual {v1, v2, v3, v4, v5}, Luk/co/blogspot/fractiousg/texample/GLText;->begin(FFFF)V

    .line 62
    iget-object v1, p0, Lorg/ros/android/view/visualization/shape/TextShape;->glText:Luk/co/blogspot/fractiousg/texample/GLText;

    iget-object v2, p0, Lorg/ros/android/view/visualization/shape/TextShape;->text:Ljava/lang/String;

    iget v3, p0, Lorg/ros/android/view/visualization/shape/TextShape;->x:F

    iget v4, p0, Lorg/ros/android/view/visualization/shape/TextShape;->y:F

    invoke-virtual {v1, v2, v3, v4}, Luk/co/blogspot/fractiousg/texample/GLText;->draw(Ljava/lang/String;FF)V

    .line 63
    iget-object v1, p0, Lorg/ros/android/view/visualization/shape/TextShape;->glText:Luk/co/blogspot/fractiousg/texample/GLText;

    invoke-virtual {v1}, Luk/co/blogspot/fractiousg/texample/GLText;->end()V

    .line 64
    invoke-interface {p2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 65
    return-void
.end method

.method public bridge synthetic getColor()Lorg/ros/android/view/visualization/Color;
    .registers 2

    .line 12
    invoke-super {p0}, Lorg/ros/android/view/visualization/shape/BaseShape;->getColor()Lorg/ros/android/view/visualization/Color;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransform()Lorg/ros/rosjava_geometry/Transform;
    .registers 2

    .line 12
    invoke-super {p0}, Lorg/ros/android/view/visualization/shape/BaseShape;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    return-object v0
.end method

.method protected scale(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 7
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 52
    invoke-virtual {p1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v0

    invoke-virtual {v0}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->getZoom()D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    invoke-virtual {p1}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v2

    invoke-virtual {v2}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->getZoom()D

    move-result-wide v2

    double-to-float v2, v2

    div-float v2, v1, v2

    invoke-interface {p2, v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 54
    return-void
.end method

.method public bridge synthetic setColor(Lorg/ros/android/view/visualization/Color;)V
    .registers 2

    .line 12
    invoke-super {p0, p1}, Lorg/ros/android/view/visualization/shape/BaseShape;->setColor(Lorg/ros/android/view/visualization/Color;)V

    return-void
.end method

.method public setOffset(FF)V
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 28
    iput p1, p0, Lorg/ros/android/view/visualization/shape/TextShape;->x:F

    .line 29
    iput p2, p0, Lorg/ros/android/view/visualization/shape/TextShape;->y:F

    .line 30
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 31
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 32
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 34
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 35
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 36
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 38
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 39
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 40
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 42
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lorg/ros/android/view/visualization/shape/TextShape;->glText:Luk/co/blogspot/fractiousg/texample/GLText;

    iget-object v3, p0, Lorg/ros/android/view/visualization/shape/TextShape;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Luk/co/blogspot/fractiousg/texample/GLText;->getLength(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 43
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 44
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 46
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TextShape;->lines:Ljava/nio/FloatBuffer;

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 47
    return-void
.end method

.method public bridge synthetic setTransform(Lorg/ros/rosjava_geometry/Transform;)V
    .registers 2

    .line 12
    invoke-super {p0, p1}, Lorg/ros/android/view/visualization/shape/BaseShape;->setTransform(Lorg/ros/rosjava_geometry/Transform;)V

    return-void
.end method
