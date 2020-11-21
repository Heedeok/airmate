.class public abstract Lorg/ros/android/view/visualization/layer/DefaultLayer;
.super Ljava/lang/Object;
.source "DefaultLayer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/layer/Layer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;)V
    .registers 3
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 41
    return-void
.end method

.method public init(Lorg/ros/node/NodeMainExecutor;)V
    .registers 2
    .param p1, "nodeMainExecutor"    # Lorg/ros/node/NodeMainExecutor;

    .line 37
    return-void
.end method

.method public onShutdown(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/Node;)V
    .registers 3
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "node"    # Lorg/ros/node/Node;

    .line 54
    return-void
.end method

.method public onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
    .registers 3
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "connectedNode"    # Lorg/ros/node/ConnectedNode;

    .line 50
    return-void
.end method

.method public onSurfaceChanged(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;II)V
    .registers 5
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 58
    return-void
.end method

.method public onSurfaceCreated(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p3, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 62
    return-void
.end method

.method public onTouchEvent(Lorg/ros/android/view/visualization/VisualizationView;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "view"    # Lorg/ros/android/view/visualization/VisualizationView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 45
    const/4 v0, 0x0

    return v0
.end method
