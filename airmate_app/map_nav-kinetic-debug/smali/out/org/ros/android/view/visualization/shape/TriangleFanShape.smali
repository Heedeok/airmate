.class public Lorg/ros/android/view/visualization/shape/TriangleFanShape;
.super Lorg/ros/android/view/visualization/shape/BaseShape;
.source "TriangleFanShape.java"


# instance fields
.field private final vertices:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>([FLorg/ros/android/view/visualization/Color;)V
    .registers 4
    .param p1, "vertices"    # [F
    .param p2, "color"    # Lorg/ros/android/view/visualization/Color;

    .line 48
    invoke-direct {p0}, Lorg/ros/android/view/visualization/shape/BaseShape;-><init>()V

    .line 49
    invoke-static {p1}, Lorg/ros/android/view/visualization/Vertices;->toFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/ros/android/view/visualization/shape/TriangleFanShape;->vertices:Ljava/nio/FloatBuffer;

    .line 50
    invoke-virtual {p0, p2}, Lorg/ros/android/view/visualization/shape/TriangleFanShape;->setColor(Lorg/ros/android/view/visualization/Color;)V

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3

    .line 37
    invoke-super {p0, p1, p2}, Lorg/ros/android/view/visualization/shape/BaseShape;->draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    return-void
.end method

.method public drawShape(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 55
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/TriangleFanShape;->vertices:Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lorg/ros/android/view/visualization/shape/TriangleFanShape;->getColor()Lorg/ros/android/view/visualization/Color;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lorg/ros/android/view/visualization/Vertices;->drawTriangleFan(Ljavax/microedition/khronos/opengles/GL10;Ljava/nio/FloatBuffer;Lorg/ros/android/view/visualization/Color;)V

    .line 56
    return-void
.end method

.method public bridge synthetic getColor()Lorg/ros/android/view/visualization/Color;
    .registers 2

    .line 37
    invoke-super {p0}, Lorg/ros/android/view/visualization/shape/BaseShape;->getColor()Lorg/ros/android/view/visualization/Color;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTransform()Lorg/ros/rosjava_geometry/Transform;
    .registers 2

    .line 37
    invoke-super {p0}, Lorg/ros/android/view/visualization/shape/BaseShape;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setColor(Lorg/ros/android/view/visualization/Color;)V
    .registers 2

    .line 37
    invoke-super {p0, p1}, Lorg/ros/android/view/visualization/shape/BaseShape;->setColor(Lorg/ros/android/view/visualization/Color;)V

    return-void
.end method

.method public bridge synthetic setTransform(Lorg/ros/rosjava_geometry/Transform;)V
    .registers 2

    .line 37
    invoke-super {p0, p1}, Lorg/ros/android/view/visualization/shape/BaseShape;->setTransform(Lorg/ros/rosjava_geometry/Transform;)V

    return-void
.end method
