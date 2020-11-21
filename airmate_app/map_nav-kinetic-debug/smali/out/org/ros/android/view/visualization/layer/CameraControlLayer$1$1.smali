.class Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CameraControlLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;


# direct methods
.method constructor <init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;)V
    .registers 2
    .param p1, "this$1"    # Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    .line 76
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;->this$1:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 98
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;->this$1:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    iget-object v0, v0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/CameraControlLayer;

    invoke-static {v0}, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->access$100(Lorg/ros/android/view/visualization/layer/CameraControlLayer;)Lorg/ros/concurrent/ListenerGroup;

    move-result-object v0

    new-instance v1, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1$2;

    invoke-direct {v1, p0, p1}, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1$2;-><init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 10
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .line 86
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;->this$1:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    iget-object v0, v0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v0}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v0

    neg-float v1, p3

    float-to-double v1, v1

    float-to-double v3, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->translate(DD)V

    .line 87
    iget-object v0, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;->this$1:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    iget-object v0, v0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/CameraControlLayer;

    invoke-static {v0}, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->access$100(Lorg/ros/android/view/visualization/layer/CameraControlLayer;)Lorg/ros/concurrent/ListenerGroup;

    move-result-object v0

    new-instance v1, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1$1;

    invoke-direct {v1, p0, p3, p4}, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1$1;-><init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$1;FF)V

    invoke-virtual {v0, v1}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 93
    const/4 v0, 0x1

    return v0
.end method
