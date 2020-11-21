.class abstract Lorg/ros/android/view/visualization/shape/BaseShape;
.super Ljava/lang/Object;
.source "BaseShape.java"

# interfaces
.implements Lorg/ros/android/view/visualization/shape/Shape;


# instance fields
.field private color:Lorg/ros/android/view/visualization/Color;

.field private transform:Lorg/ros/rosjava_geometry/Transform;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lorg/ros/rosjava_geometry/Transform;->identity()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/ros/android/view/visualization/shape/BaseShape;->setTransform(Lorg/ros/rosjava_geometry/Transform;)V

    .line 25
    return-void
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 29
    invoke-interface {p2}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 30
    invoke-virtual {p0}, Lorg/ros/android/view/visualization/shape/BaseShape;->getTransform()Lorg/ros/rosjava_geometry/Transform;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/ros/android/view/visualization/OpenGlTransform;->apply(Ljavax/microedition/khronos/opengles/GL10;Lorg/ros/rosjava_geometry/Transform;)V

    .line 31
    invoke-virtual {p0, p1, p2}, Lorg/ros/android/view/visualization/shape/BaseShape;->scale(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 32
    invoke-virtual {p0, p1, p2}, Lorg/ros/android/view/visualization/shape/BaseShape;->drawShape(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V

    .line 33
    invoke-interface {p2}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 34
    return-void
.end method

.method protected abstract drawShape(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
.end method

.method public getColor()Lorg/ros/android/view/visualization/Color;
    .registers 2

    .line 54
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/BaseShape;->color:Lorg/ros/android/view/visualization/Color;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/BaseShape;->color:Lorg/ros/android/view/visualization/Color;

    return-object v0
.end method

.method public getTransform()Lorg/ros/rosjava_geometry/Transform;
    .registers 2

    .line 65
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/BaseShape;->transform:Lorg/ros/rosjava_geometry/Transform;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lorg/ros/android/view/visualization/shape/BaseShape;->transform:Lorg/ros/rosjava_geometry/Transform;

    return-object v0
.end method

.method protected scale(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 50
    return-void
.end method

.method public setColor(Lorg/ros/android/view/visualization/Color;)V
    .registers 2
    .param p1, "color"    # Lorg/ros/android/view/visualization/Color;

    .line 60
    iput-object p1, p0, Lorg/ros/android/view/visualization/shape/BaseShape;->color:Lorg/ros/android/view/visualization/Color;

    .line 61
    return-void
.end method

.method public setTransform(Lorg/ros/rosjava_geometry/Transform;)V
    .registers 2
    .param p1, "pose"    # Lorg/ros/rosjava_geometry/Transform;

    .line 71
    iput-object p1, p0, Lorg/ros/android/view/visualization/shape/BaseShape;->transform:Lorg/ros/rosjava_geometry/Transform;

    .line 72
    return-void
.end method
