.class public interface abstract Lorg/ros/android/view/visualization/layer/Layer;
.super Ljava/lang/Object;
.source "Layer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/OpenGlDrawable;


# virtual methods
.method public abstract init(Lorg/ros/node/NodeMainExecutor;)V
.end method

.method public abstract onShutdown(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/Node;)V
.end method

.method public abstract onStart(Lorg/ros/android/view/visualization/VisualizationView;Lorg/ros/node/ConnectedNode;)V
.end method

.method public abstract onSurfaceChanged(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;II)V
.end method

.method public abstract onSurfaceCreated(Lorg/ros/android/view/visualization/VisualizationView;Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end method

.method public abstract onTouchEvent(Lorg/ros/android/view/visualization/VisualizationView;Landroid/view/MotionEvent;)Z
.end method
