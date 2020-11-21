.class Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2;
.super Ljava/lang/Object;
.source "CameraControlLayer.java"

# interfaces
.implements Lorg/ros/android/view/visualization/RotateGestureDetector$OnRotateGestureListener;


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

    .line 108
    iput-object p1, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2;->this$1:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotate(Landroid/view/MotionEvent;Landroid/view/MotionEvent;D)Z
    .registers 16
    .param p1, "event1"    # Landroid/view/MotionEvent;
    .param p2, "event2"    # Landroid/view/MotionEvent;
    .param p3, "deltaAngle"    # D

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    .line 113
    .local v1, "focusX":F
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v0, v4

    div-float/2addr v0, v3

    .line 114
    .local v0, "focusY":F
    iget-object v3, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2;->this$1:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    iget-object v3, v3, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->val$view:Lorg/ros/android/view/visualization/VisualizationView;

    invoke-virtual {v3}, Lorg/ros/android/view/visualization/VisualizationView;->getCamera()Lorg/ros/android/view/visualization/XYOrthographicCamera;

    move-result-object v4

    float-to-double v5, v1

    float-to-double v7, v0

    move-wide v9, p3

    invoke-virtual/range {v4 .. v10}, Lorg/ros/android/view/visualization/XYOrthographicCamera;->rotate(DDD)V

    .line 115
    iget-object v3, p0, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2;->this$1:Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;

    iget-object v3, v3, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1;->this$0:Lorg/ros/android/view/visualization/layer/CameraControlLayer;

    invoke-static {v3}, Lorg/ros/android/view/visualization/layer/CameraControlLayer;->access$100(Lorg/ros/android/view/visualization/layer/CameraControlLayer;)Lorg/ros/concurrent/ListenerGroup;

    move-result-object v3

    new-instance v10, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2$1;

    move-object v4, v10

    move-object v5, p0

    move v6, v1

    move v7, v0

    move-wide v8, p3

    invoke-direct/range {v4 .. v9}, Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2$1;-><init>(Lorg/ros/android/view/visualization/layer/CameraControlLayer$1$2;FFD)V

    invoke-virtual {v3, v10}, Lorg/ros/concurrent/ListenerGroup;->signal(Lorg/ros/concurrent/SignalRunnable;)V

    .line 121
    return v2
.end method
